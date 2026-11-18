.class final Lcom/ut/mini/exposure/ExposureConfigMgr$1;
.super Ljava/lang/Object;
.source "ExposureConfigMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/exposure/ExposureConfigMgr;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
