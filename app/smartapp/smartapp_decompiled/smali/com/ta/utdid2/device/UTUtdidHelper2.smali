.class public Lcom/ta/utdid2/device/UTUtdidHelper2;
.super Ljava/lang/Object;
.source "UTUtdidHelper2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dePack(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p1, v0}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method
