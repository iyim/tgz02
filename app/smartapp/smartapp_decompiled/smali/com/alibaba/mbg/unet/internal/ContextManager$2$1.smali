.class Lcom/alibaba/mbg/unet/internal/ContextManager$2$1;
.super Ljava/lang/Object;
.source "ContextManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/ContextManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/ContextManager$2;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/ContextManager$2;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/ContextManager$2$1;->this$0:Lcom/alibaba/mbg/unet/internal/ContextManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->access$200()Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/mbg/unet/internal/ContextManager;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->initSdkManager(Landroid/content/Context;)V

    return-void
.end method
