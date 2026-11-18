.class public Landroid/taobao/windvane/jspatch/WVJsPatch;
.super Ljava/lang/Object;
.source "WVJsPatch.java"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WVJsPatch"

.field private static jsPatch:Landroid/taobao/windvane/jspatch/WVJsPatch;


# instance fields
.field private configRuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jspatch/WVPatchConfig;",
            ">;"
        }
    .end annotation
.end field

.field private ruleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jspatch/WVPatchConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    .line 49
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/jspatch/WVJsPatch;->jsPatch:Landroid/taobao/windvane/jspatch/WVJsPatch;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/jspatch/WVJsPatch;
    .locals 2

    const-class v0, Landroid/taobao/windvane/jspatch/WVJsPatch;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/jspatch/WVJsPatch;->jsPatch:Landroid/taobao/windvane/jspatch/WVJsPatch;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Landroid/taobao/windvane/jspatch/WVJsPatch;

    invoke-direct {v1}, Landroid/taobao/windvane/jspatch/WVJsPatch;-><init>()V

    sput-object v1, Landroid/taobao/windvane/jspatch/WVJsPatch;->jsPatch:Landroid/taobao/windvane/jspatch/WVJsPatch;

    .line 45
    :cond_0
    sget-object v1, Landroid/taobao/windvane/jspatch/WVJsPatch;->jsPatch:Landroid/taobao/windvane/jspatch/WVJsPatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jspatch/WVPatchConfig;",
            ">;",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "WVJsPatch"

    if-eqz p1, :cond_8

    .line 172
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 176
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    if-nez v2, :cond_2

    const-string v2, "config is null"

    .line 180
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start match rules, rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_3
    iget-object v4, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->pattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_4

    .line 188
    :try_start_0
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->pattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compile rule error, pattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_4
    :goto_1
    iget-object v3, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->pattern:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object p1, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    const-string p3, "javascript:"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 200
    :cond_5
    iget-object p1, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "url matched, start execute jspatch, jsString: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    return v0

    :cond_8
    :goto_2
    const-string p1, "no jspatch need execute"

    .line 173
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public addRuleWithPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    new-instance v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    invoke-direct {v0}, Landroid/taobao/windvane/jspatch/WVPatchConfig;-><init>()V

    .line 60
    iput-object p2, v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 61
    iget-object p2, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addRuleWithPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    new-instance v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    invoke-direct {v0}, Landroid/taobao/windvane/jspatch/WVPatchConfig;-><init>()V

    .line 73
    iput-object p3, v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 74
    iput-object p1, v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->key:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized config(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/jspatch/WVJsPatch;->removeAllConfigRules()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WVJsPatch"

    const-string v0, "no jspatch"

    .line 122
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    new-instance v4, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    invoke-direct {v4}, Landroid/taobao/windvane/jspatch/WVPatchConfig;-><init>()V

    .line 133
    iput-object v3, v4, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 134
    iget-object v3, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "WVJsPatch"

    const-string v0, "jspatch config is Empty"

    .line 142
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WVJsPatch"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config success, config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :cond_4
    monitor-exit p0

    return-void

    :catch_0
    :try_start_4
    const-string v0, "WVJsPatch"

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get config error, config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVJsPatch"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start execute jspatch, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/jspatch/WVJsPatch;->tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z

    .line 161
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Landroid/taobao/windvane/jspatch/WVJsPatch;->tryJsPatch(Ljava/util/Map;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConfigRuleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jspatch/WVPatchConfig;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRuleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jspatch/WVPatchConfig;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    return-object v0
.end method

.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 0

    const/16 p3, 0x3ea

    if-ne p1, p3, :cond_0

    .line 244
    iget-object p1, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/jspatch/WVJsPatch;->execute(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    .line 246
    :cond_0
    new-instance p1, Landroid/taobao/windvane/service/WVEventResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/taobao/windvane/service/WVEventResult;-><init>(Z)V

    return-object p1
.end method

.method public declared-synchronized putConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 232
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    invoke-direct {v0}, Landroid/taobao/windvane/jspatch/WVPatchConfig;-><init>()V

    .line 235
    iput-object p2, v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    .line 236
    iget-object p2, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "WVJsPatch"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putConfig, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " js: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/taobao/windvane/jspatch/WVPatchConfig;->jsString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeAllConfigRules()V
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->configRuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeAllRules()V
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeRuleWithKey(Ljava/lang/String;)V
    .locals 5

    .line 84
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    const-string v1, "WVJsPatch"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jspatch/WVPatchConfig;

    if-eqz v3, :cond_1

    .line 90
    iget-object v4, v3, Landroid/taobao/windvane/jspatch/WVPatchConfig;->key:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/taobao/windvane/jspatch/WVPatchConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    iget-object v3, p0, Landroid/taobao/windvane/jspatch/WVJsPatch;->ruleMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeRuleWithKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "not need removeRuleWithKey"

    .line 85
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
