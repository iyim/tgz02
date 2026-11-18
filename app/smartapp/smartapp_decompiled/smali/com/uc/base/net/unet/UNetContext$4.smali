.class final Lcom/uc/base/net/unet/UNetContext$4;
.super Ljava/lang/Object;
.source "UNetContext.java"

# interfaces
.implements Lcom/alibaba/mbg/upaas/SecurityGuardWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/base/net/unet/UNetContext;->initializeUPaasManagerImplNoSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public signRequest(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
