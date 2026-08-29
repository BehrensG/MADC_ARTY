import numpy as np
import scipy.io.wavfile as wav
from pathlib import Path

def ltspice_wav_to_txt(wav_path, txt_path):

    script_dir = Path(__file__).resolve().parent
    # Load the WAV file
    
    sample_rate, data = wav.read(script_dir/wav_path)
    bin_data=[]
    for i in data :
        if i > 1.5 :
            bin_data.append(1)
        elif i < 1.5 :
            bin_data.append(0)


    # Save directly to a tab-separated text file
    np.savetxt(script_dir/txt_path, bin_data,fmt="%s", comments="")
    print(f"Successfully converted {wav_path} to {txt_path}")


# Example usage:
ltspice_wav_to_txt("wave.wav", "PLC_1_N5V.txt")