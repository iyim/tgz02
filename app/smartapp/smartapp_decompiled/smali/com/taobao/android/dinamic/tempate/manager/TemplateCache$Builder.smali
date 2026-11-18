.class public final Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private fileCapacity:J

.field private memCacheSize:I

.field private rootDirName:Ljava/lang/String;

.field private useTemplateIdAsFileName:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 469
    iput v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->memCacheSize:I

    const-wide/32 v0, 0x400000

    .line 471
    iput-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->fileCapacity:J

    const/4 v0, 0x1

    .line 473
    iput-boolean v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->useTemplateIdAsFileName:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)Ljava/lang/String;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->rootDirName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)Landroid/content/Context;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)Ljava/lang/String;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->dbName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)I
    .locals 0

    .line 461
    iget p0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->memCacheSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)J
    .locals 2

    .line 461
    iget-wide v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->fileCapacity:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;)Z
    .locals 0

    .line 461
    iget-boolean p0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->useTemplateIdAsFileName:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->rootDirName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->dbName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;-><init>(Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$1;)V

    return-object v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withDbName(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->dbName:Ljava/lang/String;

    return-object p0
.end method

.method public withFileCapacity(J)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 507
    iput-wide p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->fileCapacity:J

    return-object p0
.end method

.method public withMemCacheSize(I)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 502
    iput p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->memCacheSize:I

    return-object p0
.end method

.method public withRootDirName(Ljava/lang/String;)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->rootDirName:Ljava/lang/String;

    return-object p0
.end method

.method public withUseTemplateIdAsFileName(Z)Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$Builder;->useTemplateIdAsFileName:Z

    return-object p0
.end method
