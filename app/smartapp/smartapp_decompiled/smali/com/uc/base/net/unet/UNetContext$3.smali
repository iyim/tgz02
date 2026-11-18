.class final Lcom/uc/base/net/unet/UNetContext$3;
.super Ljava/lang/Object;
.source "UNetContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/base/net/unet/UNetContext;->initializeUPaasManagerNoSG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$authCode:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ds:Ljava/lang/String;

.field final synthetic val$dsType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$ds:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$dsType:Ljava/lang/String;

    iput-object p5, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$appKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$authCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$appName:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$ds:Ljava/lang/String;

    iget-object v3, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$dsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$appKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/uc/base/net/unet/UNetContext$3;->val$authCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/uc/base/net/unet/UNetContext;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
