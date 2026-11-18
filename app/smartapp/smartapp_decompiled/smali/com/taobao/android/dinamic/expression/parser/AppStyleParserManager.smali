.class public Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;
.super Ljava/lang/Object;
.source "AppStyleParserManager.java"


# static fields
.field private static final FILE_PATh:Ljava/lang/String; = "dinamic/dx_appstyle.json"

.field private static volatile instance:Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;


# instance fields
.field private mConfigJson:Lcom/alibaba/fastjson/JSONObject;

.field private mIsInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mIsInit:Z

    return-void
.end method

.method public static getInstance()Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->instance:Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->instance:Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;-><init>()V

    sput-object v1, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->instance:Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->instance:Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;

    return-object v0
.end method

.method private loadJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "dinamic/dx_appstyle.json"

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 65
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 78
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p1, :cond_5

    .line 81
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v1

    :goto_2
    if-eqz v1, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    :catch_1
    :cond_3
    throw v0

    :catch_2
    move-object p1, v1

    :catch_3
    :goto_3
    if-eqz v1, :cond_4

    .line 78
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    .line 87
    :catch_4
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public loadJsonObj()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mConfigJson:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mIsInit:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->loadJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mConfigJson:Lcom/alibaba/fastjson/JSONObject;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mIsInit:Z

    .line 48
    iget-object v0, p0, Lcom/taobao/android/dinamic/expression/parser/AppStyleParserManager;->mConfigJson:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method
