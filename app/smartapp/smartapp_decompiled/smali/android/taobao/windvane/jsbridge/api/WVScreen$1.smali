.class Landroid/taobao/windvane/jsbridge/api/WVScreen$1;
.super Ljava/lang/Object;
.source "WVScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVScreen;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVScreen;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVScreen;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 56
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVScreen;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "msg"

    const-string v2, "no permission"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVScreen$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method
