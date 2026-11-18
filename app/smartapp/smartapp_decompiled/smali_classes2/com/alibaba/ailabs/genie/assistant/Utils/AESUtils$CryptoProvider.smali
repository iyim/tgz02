.class public Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;
.super Ljava/security/Provider;
.source "AESUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "Crypto"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)"

    .line 76
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "SecureRandom.SHA1PRNG"

    const-string v1, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v1, "Software"

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AESUtils$CryptoProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
