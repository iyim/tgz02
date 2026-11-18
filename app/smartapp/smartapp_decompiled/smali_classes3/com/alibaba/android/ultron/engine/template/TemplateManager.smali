.class public Lcom/alibaba/android/ultron/engine/template/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Lcom/alibaba/android/ultron/engine/template/ITemplateManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TemplateManager"

.field private static mockProtocolFileContent:Ljava/lang/String;

.field private static mockProtocolFileName:Ljava/lang/String;

.field private static mockTemplateFileContent:Ljava/lang/String;

.field private static mockTemplateFileName:Ljava/lang/String;

.field private static mockUserDataFileContent:Ljava/lang/String;

.field private static mockUserDataFileName:Ljava/lang/String;

.field public static templateCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field initialized:Z

.field isTemplateValid:Z

.field mBizName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

.field mProtocolRenderState:Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;

.field mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->isTemplateValid:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initialized:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockTemplateFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockTemplateFileContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockUserDataFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockUserDataFileContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockProtocolFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockProtocolFileContent:Ljava/lang/String;

    return-object p0
.end method

.method private debugToast(Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$2;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private fetchOriginalTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_4

    .line 249
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 252
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "TemplateManager"

    if-ne v0, v1, :cond_1

    const-string v0, "\u5f53\u524d\u662f\u4e3b\u7ebf\u7a0b\uff0c\u76f4\u63a5\u62c9\u53d6\u6a21\u677f\u4f1a\u6709\u963b\u585e"

    .line 254
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v0, 0x1

    .line 260
    new-array v1, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u901a\u8fc7url\u83b7\u53d6\u6a21\u677f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->fetchTemplateByUrl(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 263
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url\u83b7\u53d6\u6a21\u677f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "url\u83b7\u53d6\u6a21\u677f\u5931\u8d25"

    return-object p1

    :cond_2
    const-string v4, "templateId"

    .line 266
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    .line 267
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 269
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 271
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 272
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6a21\u677f\u62c9\u53d6\u6210\u529f\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f7f\u7528\u8fdc\u7a0b\u62c9\u53d6\u7684\u6a21\u677f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    .line 274
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url\u83b7\u53d6\u6a21\u677f id\u3001version\u4e0d\u5339\u914d\uff0c\u6240\u9700\u6a21\u677f\uff1a"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n url\u62c9\u53d6\u5230\u6a21\u677f\uff1a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "\u83b7\u53d6\u6a21\u677fid,version\u4e0d\u5339\u914d"

    return-object p1

    :cond_4
    :goto_0
    const-string p1, "\u6a21\u677furl\u4e3a\u7a7a"

    return-object p1
.end method

.method private fetchTemplateByUrl(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 283
    new-instance v0, Lanetwork/channel/degrade/DegradableNetwork;

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 285
    new-instance v1, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v1, p1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getTemplateDownloadTimeout()I

    move-result p1

    .line 287
    invoke-interface {v1, p1}, Lanetwork/channel/Request;->setConnectTimeout(I)V

    .line 288
    invoke-interface {v1, p1}, Lanetwork/channel/Request;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 289
    invoke-interface {v0, v1, p1}, Lanetwork/channel/Network;->syncSend(Lanetwork/channel/Request;Ljava/lang/Object;)Lanetwork/channel/Response;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lanetwork/channel/Response;->getStatusCode()I

    move-result v1

    .line 291
    invoke-interface {v0}, Lanetwork/channel/Response;->getBytedata()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 295
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 298
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    .line 302
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private getFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 324
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getSQLiteCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->objectForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    return-object p1
.end method

.method private getMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 316
    sget-object v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->templateJson:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 318
    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->templateJson:Lcom/alibaba/fastjson/JSONObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPresetTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    const-string v0, "TemplateManager"

    .line 393
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ultrontemplate_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/template.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "file:///android_asset/"

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    .line 399
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 405
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getAssetsFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getDataFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v1, 0x0

    .line 412
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "getPresetTemplate parse JSON failed"

    .line 414
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    const-string v3, "version"

    .line 418
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "templateId"

    .line 419
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 420
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 424
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    const-string p1, "\u9884\u7f6e\u6a21\u677f\u672a\u627e\u5230\uff1aid\u548cversion\u4e0d\u5339\u914d"

    .line 428
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    :cond_5
    :goto_2
    return-object v2

    :cond_6
    const-string p1, "\u5185\u7f6e\u6a21\u677f\u4e0d\u5b58\u5728\u6216\u5185\u5bb9\u4e3a\u7a7a"

    .line 431
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private getTemplateDownloadTimeout()I
    .locals 1

    .line 312
    invoke-static {}, Lcom/alibaba/android/ultron/vfw/util/ConfigUtils;->getTemplateTimeOut()I

    move-result v0

    return v0
.end method

.method private getUnifyID(Lcom/alibaba/android/ultron/engine/model/Template;)Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/Template;->templateId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/Template;->version:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUnifyID template:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemplateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isTemplateValid(Lcom/alibaba/android/ultron/engine/model/Template;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 561
    :cond_0
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/Template;->hierarchy:Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/Template;->blocks:Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private preRenderTemplate(Lcom/alibaba/android/ultron/engine/model/Template;)V
    .locals 1

    .line 568
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;-><init>(Lcom/alibaba/android/ultron/engine/model/Template;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    .line 569
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->preRender()V

    return-void
.end method


# virtual methods
.method public initTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TemplateManager"

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getPresetTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "use url preset templateJson"

    .line 180
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 186
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init template: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v3, "use mem cache templateJson"

    if-eqz v0, :cond_3

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u5185\u5b58\u7f13\u5b58\u6a21\u677f\n "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    .line 192
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 197
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u6587\u4ef6\u7f13\u5b58\u6a21\u677f\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    const-string p1, "use file templateJson"

    .line 202
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 207
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getPresetTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4f7f\u7528\u5185\u7f6e\u6a21\u677f\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->saveFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V

    const-string p1, "use preset templateJson"

    .line 214
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 219
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->fetchOriginalTemplate(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 220
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 221
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 223
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "\u6a21\u677f\u62c9\u53d6\u6210\u529f,memCache\u4e3a\u7a7a"

    :cond_7
    const p1, 0x186a4

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    return-object p1
.end method

.method public initTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 8

    const-string v0, "init template"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemplateManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initialized:Z

    if-nez v0, :cond_5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_template"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 98
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockTemplateFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "\u5df2\u4f18\u5148\u4f7f\u7528\u5f00\u53d1\u8c03\u8bd5mock\u6a21\u677f"

    .line 99
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->debugToast(Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockTemplateFileContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 101
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v2

    new-instance v5, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {v5}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    new-array v6, v4, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v7, v6, v3

    .line 108
    invoke-static {p1, v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v5, v7, v6}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v5

    const-string v6, "fileName"

    .line 109
    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object v5

    const-string v6, "STATUS_ENGINE_TEMPLATE_ENGING_INIT"

    .line 105
    invoke-interface {v2, v6, v5}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v2

    new-instance v5, Lcom/alibaba/android/ultron/engine/template/TemplateManager$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$1;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Ljava/lang/String;)V

    const-string v0, "EVENT_UPDATA_TEMPLATE_FILE"

    invoke-interface {v2, v0, v5}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->registerStatusCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/inter/IStatusListener;)V

    .line 129
    :cond_1
    iput-boolean v4, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->initialized:Z

    .line 130
    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/utils/TemplateParseUtils;->parseTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/model/Template;

    move-result-object p1

    .line 131
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/model/Template;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsed template: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 135
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    if-eqz v2, :cond_2

    .line 136
    iget-object v6, v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->originalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    if-eqz v6, :cond_2

    .line 137
    iget-object p1, v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->originalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    const-string p1, "use cache OriginalTemplateState"

    .line 138
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    iput-boolean v4, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->isTemplateValid:Z

    .line 140
    invoke-static {v5}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->isTemplateValid(Lcom/alibaba/android/ultron/engine/model/Template;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->isTemplateValid:Z

    .line 146
    iget-boolean v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->isTemplateValid:Z

    if-nez v2, :cond_3

    const v0, 0x186a0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/Template;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 152
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->preRenderTemplate(Lcom/alibaba/android/ultron/engine/model/Template;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    new-array p1, v4, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init template success:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    invoke-virtual {v4}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/ultron/engine/utils/PrintInfoUtils;->getAllPreRenderComponentInfo(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    sget-object p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    if-nez p1, :cond_4

    .line 160
    new-instance p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    invoke-direct {p1, v5}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager$1;)V

    .line 161
    sget-object v1, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iput-object v0, p1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->originalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    .line 165
    invoke-static {v5}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const v0, 0x186a1

    .line 154
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/Exception;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 94
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "template has been initialized !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preLoad()V
    .locals 4

    const-string v0, "preload"

    .line 356
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "TemplateManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$3;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;)V

    .line 381
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getSQLiteCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_template_cache_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/ultron/engine/template/TemplateInfo;

    invoke-interface {v0, v2, v3, v1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->objectForKey(Ljava/lang/String;Ljava/lang/Class;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectGetCallback;)V

    :cond_0
    return-void
.end method

.method public renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 11

    const v0, 0x186a5

    if-nez p1, :cond_0

    const-string p1, "userData is null"

    .line 447
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    if-nez v1, :cond_1

    const-string p1, "OriginalTemplateState is null"

    .line 450
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_userData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "fileName"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "content"

    if-eqz v2, :cond_3

    .line 455
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockUserDataFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    sget-object v2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockUserDataFileContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    iput-object v2, p1, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v2

    new-instance v7, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {v7}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    iget-object v8, p1, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    new-array v9, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v10, v9, v4

    .line 462
    invoke-static {v8, v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v7

    .line 463
    invoke-virtual {v7, v3, v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v7

    .line 464
    invoke-virtual {v7}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object v7

    const-string v8, "STATUS_ENGINE_TEMPLATE_ENGINE_RENDER_USERDATA"

    .line 459
    invoke-interface {v2, v8, v7}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 466
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v2

    new-instance v7, Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;

    invoke-direct {v7, p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$4;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Ljava/lang/String;)V

    const-string v0, "EVENT_UPDATA_USER_RANDER_DATA"

    invoke-interface {v2, v0, v7}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->registerStatusCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/inter/IStatusListener;)V

    .line 485
    :cond_3
    :try_start_0
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mOriginalTemplateState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v8, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-direct {v0, v2, v7, v8}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;-><init>(Landroid/content/Context;Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;Lcom/alibaba/android/ultron/engine/template/state/RenderState;)V

    .line 486
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->bizData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->setBizData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 487
    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    .line 488
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    if-eqz p1, :cond_4

    .line 491
    iget-boolean v0, p1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    return-object p1

    .line 499
    :cond_4
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->noNeedRefresh()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "noNeedRefresh"

    .line 500
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "TemplateManager"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createNoNeedRefreshRenderInfo()Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 507
    :cond_5
    :try_start_1
    new-instance p1, Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mProtocolRenderState:Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;

    .line 508
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mProtocolRenderState:Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;->renderProtocol(Lcom/alibaba/android/ultron/engine/template/state/RenderState;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_protocol"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 513
    sget-object v1, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockProtocolFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 514
    sget-object v1, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mockProtocolFileContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    iput-object v1, p1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    .line 517
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v1

    const-string v2, "STATUS_ENGINE_TEMPLATE_ENGINE_RENDER_PROTOCOL"

    new-instance v7, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {v7}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    iget-object v8, p1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    new-array v5, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v9, v5, v4

    .line 520
    invoke-static {v8, v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v4

    .line 521
    invoke-virtual {v4, v3, v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 517
    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 525
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v1

    const-string v2, "EVENT_UPDATA_PROTOCOL_FILE"

    new-instance v3, Lcom/alibaba/android/ultron/engine/template/TemplateManager$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$5;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->registerStatusCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/inter/IStatusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    const v0, 0x186a3

    .line 543
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/Exception;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    const v0, 0x186a2

    .line 495
    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/Exception;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method

.method public renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 551
    new-instance v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;-><init>()V

    .line 552
    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    .line 553
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->renderUserData(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resetCurrentTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    return-void
.end method

.method public saveFileCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    .line 340
    :try_start_0
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getSQLiteCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_template_cache_info"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 344
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TemplateManager"

    const/4 v2, 0x1

    .line 345
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveFileCache key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getSQLiteCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->mBizName:Ljava/lang/String;

    const-string v0, "saveFileCache"

    invoke-static {p2, v0, p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public saveMemCache(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 330
    sget-object v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;-><init>(Lcom/alibaba/android/ultron/engine/template/TemplateManager$1;)V

    .line 334
    :cond_0
    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/TemplateManager$TemplateCacheInfo;->templateJson:Lcom/alibaba/fastjson/JSONObject;

    .line 335
    sget-object p2, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->templateCacheMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/TemplateManager;->getUnifyID(Lcom/alibaba/android/ultron/engine/template/TemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
