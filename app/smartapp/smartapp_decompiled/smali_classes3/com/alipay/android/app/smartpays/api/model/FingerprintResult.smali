.class public Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
.super Ljava/lang/Object;
.source "FingerprintResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;
    }
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mMessage:Ljava/lang/String;

.field public mResult:I

.field public mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

.field public mTokenId:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 24
    iput p1, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    .line 25
    iput-object p2, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 20
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    iput-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mResult:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mMessage:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mData:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mData:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mTokenId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mTokenId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
