.class public Lcom/taobao/android/dinamicx/DXStaticConst;
.super Ljava/lang/Object;
.source "DXStaticConst.java"


# static fields
.field private static targetSdkVersion:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTargetSdkVersion()I
    .locals 2

    .line 7
    sget v0, Lcom/taobao/android/dinamicx/DXStaticConst;->targetSdkVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Lcom/taobao/android/dinamicx/DXStaticConst;->targetSdkVersion:I

    .line 10
    :cond_0
    sget v0, Lcom/taobao/android/dinamicx/DXStaticConst;->targetSdkVersion:I

    return v0
.end method
