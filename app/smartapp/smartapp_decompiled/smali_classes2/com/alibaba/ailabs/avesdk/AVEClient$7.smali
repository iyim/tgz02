.class Lcom/alibaba/ailabs/avesdk/AVEClient$7;
.super Ljava/lang/Object;
.source "AVEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/avesdk/AVEClient;->registerCameraDataCallback(IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field final synthetic val$callback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/avesdk/AVEClient;IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iput p2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$width:I

    iput p3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$height:I

    iput-object p4, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$callback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->this$0:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget v1, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$width:I

    iget v2, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$height:I

    iget-object v3, p0, Lcom/alibaba/ailabs/avesdk/AVEClient$7;->val$callback:Lcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->registerCameraDataCallback(IILcom/alibaba/ailabs/avesdk/IAVECameraDataCallback;)Z

    return-void
.end method
