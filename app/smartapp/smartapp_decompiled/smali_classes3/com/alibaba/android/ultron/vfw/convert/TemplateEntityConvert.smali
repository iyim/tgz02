.class public Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;
.super Ljava/lang/Object;
.source "TemplateEntityConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static convertToDXTemplateItem(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 4
    .param p0    # Lcom/taobao/android/ultron/common/model/DynamicTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 25
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->version:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 35
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    iput-wide v2, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    .line 41
    iget-object p0, p0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->url:Ljava/lang/String;

    iput-object p0, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static convertToDXTemplateItemList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 53
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 58
    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDXTemplateItem(Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static convertToDynamicTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/ultron/common/model/DynamicTemplate;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    new-instance v0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-direct {v0}, Lcom/taobao/android/ultron/common/model/DynamicTemplate;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    .line 75
    iget-wide v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->version:Ljava/lang/String;

    .line 76
    iget-object p0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    iput-object p0, v0, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static convertToDynamicTemplateList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 88
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 93
    invoke-static {v1}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDynamicTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
