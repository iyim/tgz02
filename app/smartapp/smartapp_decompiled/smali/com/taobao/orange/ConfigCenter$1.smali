.class Lcom/taobao/orange/ConfigCenter$1;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/ConfigCenter;->init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/ConfigCenter;

.field final synthetic val$config:Lcom/taobao/orange/OConfig;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/orange/ConfigCenter;Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iput-object p2, p0, Lcom/taobao/orange/ConfigCenter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 112
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/taobao/orange/ConfigCenter;->access$000(Lcom/taobao/orange/ConfigCenter;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    const/4 v1, 0x2

    .line 115
    invoke-static {v1}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 116
    new-instance v3, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;

    const-class v5, Lcom/taobao/orange/OConfig;

    new-array v6, v2, [Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SimplePropertyPreFilter;->getExcludes()Ljava/util/Set;

    move-result-object v5

    const-string v6, "appSecret"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v5, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    const/4 v6, 0x3

    new-array v7, v6, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v8, v7, v2

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v8, v7, v4

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v8, v7, v1

    invoke-static {v5, v3, v7}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ConfigCenter"

    const-string v7, "init start"

    const/4 v8, 0x6

    .line 119
    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "sdkVersion"

    aput-object v9, v8, v2

    const-string v9, "1.5.4.13"

    aput-object v9, v8, v4

    const-string/jumbo v9, "utdid"

    aput-object v9, v8, v1

    sget-object v1, Lcom/taobao/orange/GlobalOrange;->deviceId:Ljava/lang/String;

    aput-object v1, v8, v6

    const/4 v1, 0x4

    const-string v6, "config"

    aput-object v6, v8, v1

    const/4 v1, 0x5

    aput-object v3, v8, v1

    invoke-static {v5, v7, v8}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->context:Landroid/content/Context;

    .line 122
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->appKey:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->appKey:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->appVersion:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->appVersion:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->userId:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->userId:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->appSecret:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->appSecret:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->authCode:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->authCode:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-boolean v1, v1, Lcom/taobao/orange/OConfig;->reportAck:Z

    sput-boolean v1, Lcom/taobao/orange/GlobalOrange;->reportUpdateAck:Z

    .line 128
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-boolean v1, v1, Lcom/taobao/orange/OConfig;->statUsedConfig:Z

    sput-boolean v1, Lcom/taobao/orange/GlobalOrange;->statUsedConfig:Z

    .line 129
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget v1, v1, Lcom/taobao/orange/OConfig;->indexUpdateMode:I

    invoke-static {v1}, Lcom/taobao/orange/OConstant$UPDMODE;->valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->indexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 130
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget v1, v1, Lcom/taobao/orange/OConfig;->env:I

    invoke-static {v1}, Lcom/taobao/orange/OConstant$ENV;->valueOf(I)Lcom/taobao/orange/OConstant$ENV;

    move-result-object v1

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->env:Lcom/taobao/orange/OConstant$ENV;

    .line 131
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    const-wide/16 v5, 0xa

    invoke-virtual {v1, v5, v6}, Lcom/taobao/orange/ConfigCenter;->updateRandomDelayAckInterval(J)J

    move-result-wide v5

    sput-wide v5, Lcom/taobao/orange/GlobalOrange;->randomDelayAckInterval:J

    .line 132
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->probeHosts:Ljava/util/Set;

    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v3, v3, Lcom/taobao/orange/OConfig;->probeHosts:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->dcHost:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->dcHost:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->dcVips:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->dcVips:Ljava/util/Set;

    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v3, v3, Lcom/taobao/orange/OConfig;->dcVips:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->ackHost:Ljava/lang/String;

    sput-object v1, Lcom/taobao/orange/GlobalOrange;->ackHost:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v1, v1, Lcom/taobao/orange/OConfig;->ackVips:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    sget-object v1, Lcom/taobao/orange/GlobalOrange;->ackVips:Ljava/util/Set;

    iget-object v3, p0, Lcom/taobao/orange/ConfigCenter$1;->val$config:Lcom/taobao/orange/OConfig;

    iget-object v3, v3, Lcom/taobao/orange/OConfig;->ackVips:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mListeners:Ljava/util/Map;

    const-string v3, "orange"

    new-instance v5, Lcom/taobao/orange/ConfigCenter$1$1;

    invoke-direct {v5, p0}, Lcom/taobao/orange/ConfigCenter$1$1;-><init>(Lcom/taobao/orange/ConfigCenter$1;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/taobao/orange/candidate/MultiAnalyze;->initBuildInCandidates()V

    .line 152
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    invoke-virtual {v1}, Lcom/taobao/orange/ConfigCenter;->loadCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "anetwork.channel.interceptor.Interceptor"

    .line 154
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "anetwork.channel.interceptor.InterceptorManager"

    .line 155
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 156
    new-instance v1, Lcom/taobao/orange/sync/NetworkInterceptor;

    invoke-direct {v1}, Lcom/taobao/orange/sync/NetworkInterceptor;-><init>()V

    .line 157
    invoke-static {v1}, Lanetwork/channel/interceptor/InterceptorManager;->addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    const-string v1, "ConfigCenter"

    const-string v3, "init"

    .line 158
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "add orange interceptor success to networksdk"

    aput-object v6, v5, v2

    invoke-static {v1, v3, v5}, Lcom/taobao/orange/util/OLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "ConfigCenter"

    const-string v5, "init"

    .line 160
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "add orange interceptor fail as not found networksdk"

    aput-object v7, v6, v2

    invoke-static {v3, v5, v1, v6}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    invoke-virtual {v1}, Lcom/taobao/orange/ConfigCenter;->forceCheckUpdate()V

    .line 164
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mInitListener:Lcom/taobao/orange/inner/OInitListener;

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$1;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, v1, Lcom/taobao/orange/ConfigCenter;->mInitListener:Lcom/taobao/orange/inner/OInitListener;

    invoke-interface {v1}, Lcom/taobao/orange/inner/OInitListener;->complete()V

    goto :goto_1

    :cond_3
    const-string v1, "ConfigCenter"

    const-string v3, "already init"

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/taobao/orange/util/OLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
