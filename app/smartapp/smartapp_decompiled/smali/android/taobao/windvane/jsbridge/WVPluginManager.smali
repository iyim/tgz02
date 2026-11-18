.class public Landroid/taobao/windvane/jsbridge/WVPluginManager;
.super Ljava/lang/Object;
.source "WVPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;
    }
.end annotation


# static fields
.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final SEPARATOR:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "WVPluginManager"

.field private static final aliasPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

.field private static final localPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final objPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private static final plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static skipMonitor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    const/4 v0, 0x0

    .line 34
    sput-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Landroid/taobao/windvane/jsbridge/WVApiPlugin;
    .locals 5

    .line 296
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 298
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 302
    :cond_0
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    sget-object p1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    return-object p0

    :cond_1
    const-string v1, "WVPluginManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 304
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-nez v0, :cond_2

    const-string/jumbo v3, "\u65e0\u5c40\u90e8API\uff0c\u5c1d\u8bd5\u4ece\u5168\u5c40API\u83b7\u53d6"

    .line 307
    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "\u4f7f\u7528\u5c40\u90e8API"

    .line 309
    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 313
    :cond_3
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    if-eqz v0, :cond_6

    .line 314
    invoke-interface {v0, p0}, Landroid/taobao/windvane/jsbridge/IJsBridgeService;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    .line 316
    invoke-static {p0, v0, v3}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 317
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-eqz v0, :cond_5

    .line 318
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    return-object v2

    :cond_6
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 326
    :cond_7
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    if-eqz v0, :cond_f

    .line 327
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto/16 :goto_4

    .line 333
    :cond_8
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 336
    :cond_9
    :try_start_0
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-nez v4, :cond_a

    .line 339
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    .line 341
    :cond_a
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_d

    .line 343
    const-class v4, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 344
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    .line 345
    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$100(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 346
    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$100(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, p2, v0, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 349
    :cond_b
    instance-of v0, p2, Landroid/taobao/windvane/webview/WVWebView;

    if-eqz v0, :cond_c

    .line 350
    nop

    nop

    invoke-virtual {v3, p1, p2, v2, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 352
    :cond_c
    invoke-virtual {v3, p1, p2, v2, p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-object v3

    :catch_0
    move-exception p1

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create plugin error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_d
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create plugin failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v2

    .line 328
    :cond_f
    :goto_4
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create plugin failed, plugin not register or empty, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object v2
.end method

.method public static getOriginalPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p0, p0, 0x2

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 251
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 252
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    .line 253
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string p1, "getOriginalPlugin failed, alias is empty."

    .line 242
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getPluginInfo(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;
    .locals 1

    .line 118
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    :goto_0
    return-object p0
.end method

.method public static getPluginInfo()Ljava/lang/String;
    .locals 4

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-static {v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->access$000(Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 228
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "WVPluginManager"

    const-string/jumbo p1, "registerAlias quit, this is no original plugin or alias is invalid."

    .line 229
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerLocalPlugin(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/webview/IWVWebView;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 190
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 193
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    .line 195
    invoke-static {p1, p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u6ce8\u518c\u5230\u5c40\u90e8API\uff0c\u4f7f\u7528\u8303\u56f4=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "],API=["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WVPluginManager"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;Z)V"
        }
    .end annotation

    .line 83
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-static {p0, p1, p2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static registerPlugin(Ljava/lang/String;Ljava/lang/Class;ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 64
    :cond_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 65
    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-boolean p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->skipMonitor:Z

    if-nez p2, :cond_1

    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 67
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, "WVPluginManager"

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 134
    :try_start_0
    instance-of v0, p1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "registerPlugin by Object error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WVPluginManager"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-direct {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 159
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 161
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs registerPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)V
    .locals 6

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-direct {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 169
    invoke-virtual {v0, p3}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->setParamObj(Ljava/lang/Object;)V

    .line 170
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 172
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs registerPluginwithParam(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/WVApiPlugin;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {v1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginManager$WVPluginInfo;->setParamObj(Ljava/lang/Object;)V

    .line 102
    :cond_0
    sget-object p2, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 104
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "HY_REGISTERPLUGIN"

    const-string v2, ""

    const-string v3, "HY_REGISTERPLUGIN"

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->onJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static registerWVJsBridgeService(Landroid/taobao/windvane/jsbridge/IJsBridgeService;)V
    .locals 0

    .line 210
    sput-object p0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->jsBridgeService:Landroid/taobao/windvane/jsbridge/IJsBridgeService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static skipMnoitor(Z)V
    .locals 0

    .line 52
    sput-boolean p0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->skipMonitor:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->aliasPlugins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "::"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p0, "WVPluginManager"

    const-string/jumbo p1, "unregisterAlias quit, alias is invalid."

    .line 281
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterLocalPlugins(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 264
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 268
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->localPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static unregisterPlugin(Ljava/lang/String;)V
    .locals 1

    .line 272
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->plugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    :cond_0
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVPluginManager;->objPlugins:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
