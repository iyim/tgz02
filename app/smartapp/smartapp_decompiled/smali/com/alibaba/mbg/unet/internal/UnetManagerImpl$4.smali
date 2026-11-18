.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->setIntValueSetting(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;I)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->val$key:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$4;->val$value:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeSetIntValueSetting(JLjava/lang/String;I)V

    return-void
.end method
