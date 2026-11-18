.class public Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;
.super Ljava/lang/Object;
.source "DXPackageManager.java"


# instance fields
.field private binaryLoader:Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;

.field private fileManager:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

.field private loaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/dinamicx/template/loader/ILoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->loaders:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->getInstance()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->fileManager:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    .line 28
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->binaryLoader:Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;

    return-void
.end method

.method private load(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/android/dinamicx/DXRuntimeContext;",
            "Landroid/content/Context;",
            ")",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;"
        }
    .end annotation

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->fileManager:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    invoke-virtual {v0, p2, p4}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;->load(Ljava/lang/String;Lcom/taobao/android/dinamicx/DXRuntimeContext;)[B

    move-result-object p2

    if-eqz p2, :cond_4

    .line 44
    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->binaryLoader:Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;

    invoke-virtual {v0, p2, p4, p5}, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->loadFromBuffer([BLcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 70
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 71
    iget-object p5, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->loaders:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 72
    iget-object p5, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->loaders:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/taobao/android/dinamicx/template/loader/ILoader;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->fileManager:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p5, p1, v0, p4}, Lcom/taobao/android/dinamicx/template/loader/ILoader;->load(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/template/loader/DXFileManager;Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    if-eqz p4, :cond_6

    .line 46
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 48
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p3

    iget-object p3, p3, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p3, :cond_6

    .line 50
    new-instance p5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v0, 0xea76

    const-string v2, "Template"

    const-string v3, "Template_Read"

    invoke-direct {p5, v2, v3, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez p2, :cond_5

    const-string p2, "DXPackageManager load  bytes == null"

    .line 53
    iput-object p2, p5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p2, "DXPackageManager load  bytes.len == 0"

    .line 55
    iput-object p2, p5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 57
    :goto_2
    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_6
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object p2

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->removeTemplate(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V

    return-object v1
.end method

.method private registerLoader(Ljava/lang/String;Lcom/taobao/android/dinamicx/template/loader/ILoader;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->loaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->loaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public load(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 7

    .line 81
    iget-object v0, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    iget-object v3, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->mainFilePath:Ljava/lang/String;

    iget-object v0, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    iget-object v4, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->subFilePathDict:Ljava/util/Map;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/template/loader/DXPackageManager;->load(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method
