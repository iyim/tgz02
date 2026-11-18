.class public final Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;
.super Landroid/os/AsyncTask;
.source "SerialTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/SerialTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/taobao/android/dinamic/tempate/DownloadResult;",
        "Lcom/taobao/android/dinamic/tempate/DownloadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private alreadyExistTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private failedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private finishedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private interval:J

.field private intervalRun:Ljava/util/TimerTask;

.field private volatile isFinished:Z

.field private final layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

.field listener:Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;

.field module:Ljava/lang/String;

.field private taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

.field templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private totalFailedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private totalFinishedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamic/tempate/DinamicTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 75
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->interval:J

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->finishedTemplates:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFinishedTemplates:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFailedTemplates:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->alreadyExistTemplates:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask$1;-><init>(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->intervalRun:Ljava/util/TimerTask;

    .line 103
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;I)V
    .locals 2

    .line 106
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 75
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->interval:J

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->finishedTemplates:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFinishedTemplates:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFailedTemplates:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->alreadyExistTemplates:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask$1;-><init>(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)V

    iput-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->intervalRun:Ljava/util/TimerTask;

    .line 107
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    int-to-long p1, p2

    .line 108
    iput-wide p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->interval:J

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;Lcom/taobao/android/dinamic/tempate/SerialTaskManager;)Lcom/taobao/android/dinamic/tempate/SerialTaskManager;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->isFinished:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->finishedTemplates:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;)Lcom/taobao/android/dinamic/tempate/DownloadResult;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->buildResult()Lcom/taobao/android/dinamic/tempate/DownloadResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;[Ljava/lang/Object;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private buildResult()Lcom/taobao/android/dinamic/tempate/DownloadResult;
    .locals 2

    .line 141
    new-instance v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;

    invoke-direct {v0}, Lcom/taobao/android/dinamic/tempate/DownloadResult;-><init>()V

    .line 143
    iget-boolean v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->isFinished:Z

    iput-boolean v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->isFinished:Z

    .line 144
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->finishedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->finishedTemplates:Ljava/util/ArrayList;

    .line 145
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->failedTemplates:Ljava/util/ArrayList;

    .line 146
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFinishedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->totalFinishedTemplates:Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFailedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->totalFailedTemplates:Ljava/util/ArrayList;

    .line 148
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->alreadyExistTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/taobao/android/dinamic/tempate/DownloadResult;->alreadyExistTemplates:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkNeedDownload(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;
    .locals 3
    .param p1    # Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->readLocalLayoutFileAndUpdateDB(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 263
    new-instance v1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;

    invoke-direct {v1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;-><init>()V

    .line 264
    iput-object v0, v1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->layoutKey:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->url:Ljava/lang/String;

    .line 266
    iput-object p1, v1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    return-object v1

    :cond_1
    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/taobao/android/dinamic/tempate/DownloadResult;
    .locals 10

    .line 158
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->templates:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 166
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    if-eqz v2, :cond_3

    .line 168
    iget-object v3, v2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->templateUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    .line 169
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    .line 170
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    invoke-direct {p0, v2}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->checkNeedDownload(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;

    move-result-object v3

    if-nez v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->alreadyExistTemplates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFailedTemplates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 192
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->timer:Ljava/util/Timer;

    .line 193
    iget-object v2, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->intervalRun:Ljava/util/TimerTask;

    iget-wide v6, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->interval:J

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_8

    .line 199
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->layoutFileManager:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    iget-object v5, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iget-object v6, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->layoutKey:Ljava/lang/String;

    iget-object v7, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->url:Ljava/lang/String;

    new-instance v8, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;

    iget-object v9, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->module:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->getTemplateById(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/tempate/manager/TemplatePerfInfo;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    const/4 v5, 0x0

    const-string v6, "SerialTaskManager"

    const-string/jumbo v7, "remote getTemplate"

    .line 207
    invoke-static {v6, v7, v4}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 213
    :goto_3
    monitor-enter p0

    if-nez v4, :cond_5

    .line 215
    :try_start_1
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFailedTemplates:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->failedTemplates:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 218
    :cond_5
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->totalFinishedTemplates:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v4, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->finishedTemplates:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, p1, -0x1

    if-ne v2, v3, :cond_6

    .line 223
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->isFinished:Z

    .line 224
    iget-object v3, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 226
    :cond_6
    monitor-exit p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 229
    :cond_7
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->isFinished:Z

    .line 232
    :cond_8
    invoke-direct {p0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->buildResult()Lcom/taobao/android/dinamic/tempate/DownloadResult;

    move-result-object p1

    return-object p1

    .line 159
    :cond_9
    :goto_5
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->isFinished:Z

    .line 160
    invoke-direct {p0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->buildResult()Lcom/taobao/android/dinamic/tempate/DownloadResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->doInBackground([Ljava/lang/Void;)Lcom/taobao/android/dinamic/tempate/DownloadResult;

    move-result-object p1

    return-object p1
.end method

.method getTemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->listener:Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;

    invoke-interface {v0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;->onFinished(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    invoke-static {p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager;->access$600(Lcom/taobao/android/dinamic/tempate/SerialTaskManager;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "SerialTaskManager"

    const-string v1, "callback onFinished is error"

    .line 240
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 242
    :goto_2
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->taskManager:Lcom/taobao/android/dinamic/tempate/SerialTaskManager;

    invoke-static {v0}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager;->access$600(Lcom/taobao/android/dinamic/tempate/SerialTaskManager;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/taobao/android/dinamic/tempate/DownloadResult;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->onPostExecute(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    .locals 2

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->listener:Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileLoadListener;->onFinished(Lcom/taobao/android/dinamic/tempate/DownloadResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "callback onFinished is error"

    .line 251
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialTaskManager"

    invoke-static {v1, p1, v0}, Lcom/taobao/android/dinamic/log/DinamicLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, [Lcom/taobao/android/dinamic/tempate/DownloadResult;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$DownLoadTask;->onProgressUpdate([Lcom/taobao/android/dinamic/tempate/DownloadResult;)V

    return-void
.end method
