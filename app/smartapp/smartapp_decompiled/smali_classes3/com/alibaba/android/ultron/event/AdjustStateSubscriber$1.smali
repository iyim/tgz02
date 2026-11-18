.class Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AdjustStateSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;

.field final synthetic val$finalDataMergeParams:Ljava/util/List;

.field final synthetic val$finalEventData:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$finalExtraParams:Ljava/util/List;

.field final synthetic val$finalSubType:Ljava/lang/String;

.field final synthetic val$finalUserInput:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->this$0:Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;

    iput-object p2, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalSubType:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalEventData:Lcom/alibaba/fastjson/JSONObject;

    iput-object p4, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalExtraParams:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalUserInput:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalDataMergeParams:Ljava/util/List;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 78
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalSubType:Ljava/lang/String;

    const-string p2, "type"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalEventData:Lcom/alibaba/fastjson/JSONObject;

    const-string p2, "eventData"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalExtraParams:Ljava/util/List;

    const-string p2, "extraParams"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalUserInput:Ljava/util/List;

    const-string p2, "userInput"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->val$finalDataMergeParams:Ljava/util/List;

    const-string p2, "dataMergeParams"

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
