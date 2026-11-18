.class public Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;
.super Ljava/lang/Object;
.source "GloabWeakReferenceManager.java"


# static fields
.field private static final ourInstance:Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;


# instance fields
.field private appSizeList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private installAppList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mainDatas:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->installAppList:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->mainDatas:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->appSizeList:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->ourInstance:Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;

    return-object v0
.end method


# virtual methods
.method public currentItemInDataPos(I)I
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->getMainDatas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->getMainDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->getMainDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->getRowItemCount()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getAppSizeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->appSizeList:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInstallAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->installAppList:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMainDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->mainDatas:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setAppSizeList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->appSizeList:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setInstallAppList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->installAppList:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setMainDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GloabWeakReferenceManager;->mainDatas:Ljava/lang/ref/WeakReference;

    return-void
.end method
