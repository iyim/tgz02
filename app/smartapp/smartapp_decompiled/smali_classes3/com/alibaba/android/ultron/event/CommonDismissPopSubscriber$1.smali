.class Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;
.super Ljava/lang/Object;
.source "CommonDismissPopSubscriber.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "next"

    .line 28
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;

    const-string v1, "complete"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;)V

    :cond_2
    return-void
.end method
