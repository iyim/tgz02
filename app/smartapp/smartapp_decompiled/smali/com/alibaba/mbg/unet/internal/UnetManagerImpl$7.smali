.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getHostCacheFromHttpDns(Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$callback:Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->val$callback:Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$7;->val$callback:Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getHostCacheFromHttpDnsImpl(Ljava/lang/String;Lcom/alibaba/mbg/unet/UnetManager$GetHostCacheCallback;)V

    return-void
.end method
