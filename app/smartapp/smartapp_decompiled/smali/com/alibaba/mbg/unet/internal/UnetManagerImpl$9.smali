.class Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;
.super Ljava/lang/Object;
.source "UnetManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->addPreResolveDns(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$ipList:Ljava/lang/String;

.field final synthetic val$ttlSec:I


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$ipList:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$ttlSec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->this$0:Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;

    invoke-virtual {v0}, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl;->getSdkManagerImpl()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$ipList:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/mbg/unet/internal/UnetManagerImpl$9;->val$ttlSec:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/mbg/unet/internal/UnetManagerJni;->nativeAddPreResolveDns(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
