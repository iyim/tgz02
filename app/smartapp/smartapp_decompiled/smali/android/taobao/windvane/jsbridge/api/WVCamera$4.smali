.class Landroid/taobao/windvane/jsbridge/api/WVCamera$4;
.super Ljava/lang/Object;
.source "WVCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVCamera;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "WVCamera"

    const-string v1, "Permission granted!"

    .line 102
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->this$0:Landroid/taobao/windvane/jsbridge/api/WVCamera;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;->val$params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    return-void
.end method
