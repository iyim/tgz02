.class public Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;
.super Ljava/lang/Object;
.source "ChildCareStore.java"


# static fields
.field public static final AI_CARE_INFO_URI:Ljava/lang/String; = "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

.field public static final AI_CARE_STATUS:Ljava/lang/String; = "ai_care_status"

.field private static isOpen:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->isE1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->getChildAiCareOpen()Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isOpen:Z

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-AiCare"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isOpen:Z

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;)Z
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->getChildAiCareOpen()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isOpen:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isOpen:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getChildAiCareOpen()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.android.settings.SettingsProvider.voiceprint/smart_care_recognize"

    .line 54
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 53
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ai_care_status"

    .line 56
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "TaskService-AiCare"

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception caught! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private getContentObserver()Landroid/database/ContentObserver;
    .locals 2

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;-><init>(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public isChildCareOpen()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->isOpen:Z

    return v0
.end method
