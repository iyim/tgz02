.class public Lcom/ta/utdid2/device/UTUtdidHelper;
.super Ljava/lang/Object;
.source "UTUtdidHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dePack(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public pack([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 15
    invoke-static {p1, v0}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public packUtdidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
