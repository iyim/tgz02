.class public Lcom/alipay/android/app/render/api/RenderEnv;
.super Ljava/lang/Object;
.source "RenderEnv.java"


# static fields
.field private static mIsWallet:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isWallet()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/alipay/android/app/render/api/RenderEnv;->mIsWallet:Z

    return v0
.end method

.method public static setIsWallet(Z)V
    .locals 0

    .line 14
    sput-boolean p0, Lcom/alipay/android/app/render/api/RenderEnv;->mIsWallet:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
