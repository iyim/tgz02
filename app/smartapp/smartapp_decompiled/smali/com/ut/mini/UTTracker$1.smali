.class Lcom/ut/mini/UTTracker$1;
.super Ljava/lang/Object;
.source "UTTracker.java"

# interfaces
.implements Lcom/ut/mini/module/plugin/IUTPluginForEachDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTTracker;

.field final synthetic val$lArg1:Ljava/lang/String;

.field final synthetic val$lArg2:Ljava/lang/String;

.field final synthetic val$lArg3:Ljava/lang/String;

.field final synthetic val$lEventID:I

.field final synthetic val$lLogMap:Ljava/util/Map;

.field final synthetic val$lPageName:Ljava/lang/String;

.field final synthetic val$pluginLogMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTTracker;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/ut/mini/UTTracker$1;->this$0:Lcom/ut/mini/UTTracker;

    iput p2, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    iput-object p3, p0, Lcom/ut/mini/UTTracker$1;->val$lPageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ut/mini/UTTracker$1;->val$lArg1:Ljava/lang/String;

    iput-object p5, p0, Lcom/ut/mini/UTTracker$1;->val$lArg2:Ljava/lang/String;

    iput-object p6, p0, Lcom/ut/mini/UTTracker$1;->val$lArg3:Ljava/lang/String;

    iput-object p7, p0, Lcom/ut/mini/UTTracker$1;->val$pluginLogMap:Ljava/util/Map;

    iput-object p8, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginForEach(Lcom/ut/mini/module/plugin/UTPlugin;)V
    .locals 8

    .line 212
    invoke-virtual {p1}, Lcom/ut/mini/module/plugin/UTPlugin;->getAttentionEventIds()[I

    move-result-object v0

    iget v1, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    invoke-static {v0, v1}, Lcom/ut/mini/module/plugin/UTPlugin;->isEventIDInRange([II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v2, p0, Lcom/ut/mini/UTTracker$1;->val$lPageName:Ljava/lang/String;

    iget v3, p0, Lcom/ut/mini/UTTracker$1;->val$lEventID:I

    iget-object v4, p0, Lcom/ut/mini/UTTracker$1;->val$lArg1:Ljava/lang/String;

    iget-object v5, p0, Lcom/ut/mini/UTTracker$1;->val$lArg2:Ljava/lang/String;

    iget-object v6, p0, Lcom/ut/mini/UTTracker$1;->val$lArg3:Ljava/lang/String;

    iget-object v7, p0, Lcom/ut/mini/UTTracker$1;->val$pluginLogMap:Ljava/util/Map;

    move-object v1, p1

    .line 214
    invoke-virtual/range {v1 .. v7}, Lcom/ut/mini/module/plugin/UTPlugin;->onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    .line 219
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "utparam-cnt"

    if-eqz v2, :cond_2

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/ut/mini/UTTracker;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/ut/mini/UTTracker$1;->val$lLogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-void
.end method
