.class final Lcom/alibaba/android/umbrella/trace/UmbrellaSimple$1;
.super Ljava/lang/Object;
.source "UmbrellaSimple.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 6

    const-string p2, "umbrella_trace"

    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 274
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$000()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const-wide v2, 0x3f0a36e2eb1c432dL    # 5.0E-5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p2, v0, v4}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 278
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$100()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p2, v0, v4}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :try_start_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 287
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 289
    :catch_1
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 292
    :cond_1
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$200()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p2, v0, v4}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :try_start_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 296
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 298
    :catch_2
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p1, "ForceCloseSuccess"

    .line 301
    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$400(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$302(Z)Z

    const-string p1, "ForceCloseFailure"

    .line 302
    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$400(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$502(Z)Z

    const-string p1, "ForceClosePerformancePoint"

    .line 303
    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$400(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$602(Z)Z

    const-string p1, "ForceClosePerformancePage"

    .line 304
    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$400(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$702(Z)Z

    .line 305
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$900()Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$802(Z)Z

    .line 306
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$1100()Z

    move-result p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->access$1002(Z)Z

    .line 308
    sget-object p1, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->sUMUniformErrorReport:Lcom/alibaba/android/umbrella/utils/KVConfigItem;

    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->refreshValue()V

    :cond_3
    return-void
.end method
