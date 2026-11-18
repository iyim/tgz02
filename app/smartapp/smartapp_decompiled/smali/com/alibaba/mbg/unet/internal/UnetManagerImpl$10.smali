.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getCookieList(Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$callback:Lcom/alibaba/mbg/unet/internal/GetCookieCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->val$callback:Lcom/alibaba/mbg/unet/internal/GetCookieCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$10;->val$callback:Lcom/alibaba/mbg/unet/internal/GetCookieCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeGetCookieList(JLjava/lang/String;Lcom/alibaba/mbg/unet/internal/GetCookieCallback;)V

    return-void
.end method
