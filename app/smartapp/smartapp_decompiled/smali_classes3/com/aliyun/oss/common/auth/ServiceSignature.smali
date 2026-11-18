.class public abstract Lcom/aliyun/oss/common/auth/ServiceSignature;
.super Ljava/lang/Object;
.source "ServiceSignature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static create()Lcom/aliyun/oss/common/auth/ServiceSignature;
    .locals 1

    .line 53
    new-instance v0, Lcom/aliyun/oss/common/auth/HmacSHA1Signature;

    invoke-direct {v0}, Lcom/aliyun/oss/common/auth/HmacSHA1Signature;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
