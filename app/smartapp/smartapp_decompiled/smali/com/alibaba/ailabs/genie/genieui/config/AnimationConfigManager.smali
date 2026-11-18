.class public Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;
.super Ljava/lang/Object;
.source "AnimationConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$InstanceHolder;,
        Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;
    }
.end annotation


# static fields
.field private static final ANIM_PATH:Ljava/lang/String; = "/animation/"

.field private static final TAG:Ljava/lang/String; = "AnimationConfigManager"


# instance fields
.field private animMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;",
            ">;"
        }
    .end annotation
.end field

.field private decorAnimation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private disableWakeupTipsActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private disableWakeupTipsPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepShowActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadListener:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;

.field private statusAnimation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->animMap:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->decorAnimation:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->statusAnimation:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->parseAnimation(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->parseAnimationEntry(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->keepShowActivity:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->disableWakeupTipsActivity:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->disableWakeupTipsPackage:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;)Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->mLoadListener:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;

    return-object p0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 4

    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    :try_start_0
    const-string v1, "AnimationConfigManager"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rm -rf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const/4 p1, 0x0

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getAnimationEntry(Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;)Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;
    .locals 17

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/animation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;-><init>()V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data.json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/LottieAnimationEntry;->setFilePath(Ljava/lang/String;)V

    move-object/from16 v3, p0

    goto/16 :goto_7

    .line 139
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getType()I

    move-result v4

    const-string v6, "AnimationConfigManager"

    const/4 v7, 0x2

    if-ne v4, v7, :cond_b

    .line 140
    new-instance v4, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;-><init>()V

    .line 141
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 145
    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const-string v11, "/"

    if-ge v10, v8, :cond_3

    aget-object v12, v0, v10

    .line 146
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getCount()I

    move-result v10

    array-length v0, v0

    if-ne v10, v0, :cond_6

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v3, p0

    goto :goto_4

    .line 154
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p0

    .line 159
    :try_start_1
    invoke-direct {v3, v0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->deleteFile(Ljava/lang/String;)V

    .line 160
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/genieui/utils/ZipUtils;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 162
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 169
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 171
    :goto_5
    array-length v7, v0

    if-ge v2, v7, :cond_8

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    const/4 v7, 0x3

    if-ge v6, v7, :cond_7

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->getInstance()Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/String;

    aget-object v10, v0, v2

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/alibaba/ailabs/genie/genieui/utils/ImagePreLoader;->load([Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 178
    :cond_8
    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->setPath([Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getFps()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/FrameAnimationEntry;->setFps(I)V

    goto :goto_6

    .line 167
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "animation file error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v3, p0

    :goto_6
    move-object v0, v4

    goto :goto_7

    :cond_b
    move-object/from16 v3, p0

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getType()I

    move-result v1

    if-ne v1, v7, :cond_c

    goto :goto_7

    .line 185
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimationEntry: error type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;
    .locals 1

    .line 278
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$InstanceHolder;->sInstance:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    return-object v0
.end method

.method private getStatusName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const-string v0, "default_normal"

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "mute"

    return-object p1

    .line 264
    :pswitch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS7A04()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "session_end"

    :cond_0
    return-object v0

    :pswitch_2
    const-string p1, "asr_and_tts"

    return-object p1

    :pswitch_3
    const-string/jumbo p1, "tts"

    return-object p1

    :pswitch_4
    const-string p1, "asr"

    return-object p1

    :pswitch_5
    const-string/jumbo p1, "recognized"

    return-object p1

    :pswitch_6
    const-string p1, "default_out"

    return-object p1

    .line 256
    :pswitch_7
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS7A04()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "default"

    :cond_1
    return-object v0

    :cond_2
    const-string p1, "prompt_msg"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadConfig()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private parseAnimation(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V
    .locals 7

    const-string v0, "AnimationConfigManager"

    if-nez p1, :cond_0

    const-string p1, "config == null"

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/animation/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->getAnimBeans()Ljava/util/List;

    move-result-object p1

    .line 211
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 212
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;

    if-eqz v2, :cond_2

    .line 215
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->animMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseAnimation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 221
    invoke-static {v2, v4}, Lcom/alibaba/ailabs/genie/genieui/utils/ZipUtils;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 223
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private parseAnimationEntry(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->getStatusAnimations()Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;

    .line 94
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->getAnimationList()Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;

    .line 98
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->animMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;

    if-nez v4, :cond_4

    goto :goto_1

    .line 102
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getAnimationEntry(Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;)Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 104
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->isLoop()Z

    move-result v3

    iput-boolean v3, v4, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;->loop:Z

    .line 105
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->statusAnimation:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->getDecoration()Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;

    .line 114
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->animMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;

    if-nez v4, :cond_8

    goto :goto_2

    .line 118
    :cond_8
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getAnimationEntry(Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationBean;)Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 120
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation$Animation;->isLoop()Z

    move-result v3

    iput-boolean v3, v4, Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;->loop:Z

    .line 121
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 124
    :cond_9
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->decorAnimation:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/config/StatusAnimation;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public getAnimationEntry(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getStatusName(I)Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->statusAnimation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDecoration(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/widget/animation/AnimationEntry;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->getStatusName(I)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->decorAnimation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDisableWakeupTipsActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->disableWakeupTipsActivity:Ljava/util/List;

    return-object v0
.end method

.method public getDisableWakeupTipsPackage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->disableWakeupTipsPackage:Ljava/util/List;

    return-object v0
.end method

.method public getKeepShowActivity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->keepShowActivity:Ljava/util/List;

    return-object v0
.end method

.method public init(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->mLoadListener:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->loadConfig()V

    return-void
.end method
