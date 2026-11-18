.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->setListControlValue(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$3;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeSetListControlValue(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
