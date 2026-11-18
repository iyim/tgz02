.class Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;
.super Ljava/lang/Object;
.source "DXNotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->sendNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

.field final synthetic val$dxNotificationResult:Lcom/taobao/android/dinamicx/notification/DXNotificationResult;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;Lcom/taobao/android/dinamicx/notification/DXNotificationResult;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;->val$dxNotificationResult:Lcom/taobao/android/dinamicx/notification/DXNotificationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;->this$0:Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;

    iget-object v0, v0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter;->listener:Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationCenter$1;->val$dxNotificationResult:Lcom/taobao/android/dinamicx/notification/DXNotificationResult;

    invoke-interface {v0, v1}, Lcom/taobao/android/dinamicx/notification/IDXNotificationListener;->onNotificationListener(Lcom/taobao/android/dinamicx/notification/DXNotificationResult;)V

    return-void
.end method
