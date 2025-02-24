import { WalletConnection } from "@/context/walletContext";

export async function CetMinter(walletConnection: WalletConnection) {
  const { lucid, address } = walletConnection;
  try {
    if (!lucid || !address) throw new Error("Connect Wallet");
    const tx = await lucid.newTx().complete();

    const signed = await tx.sign.withWallet().complete();
    const txHash = await signed.submit();
    console.log("txHash: ", txHash);
    return txHash;
  } catch (error: any) {
    return error;
  }
}
