.class Landroid/taobao/windvane/jsbridge/api/WVImage$3;
.super Ljava/lang/Object;
.source "WVImage.java"

# interfaces
.implements Landroid/taobao/windvane/util/ImageTool$ImageSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVImage;->saveImage(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVImage;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVImage;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$3;->this$0:Landroid/taobao/windvane/jsbridge/api/WVImage;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$3;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "msg"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$3;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method public success()V
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVImage$3;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    return-void
.end method
