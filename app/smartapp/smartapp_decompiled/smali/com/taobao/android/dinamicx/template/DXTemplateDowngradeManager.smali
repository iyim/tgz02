.class public Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;
.super Ljava/lang/Object;
.source "DXTemplateDowngradeManager.java"


# instance fields
.field private downgradeMaxCount:I

.field private downgradeTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeMaxCount:I

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public fetchPresetTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 67
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getPresetTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1
.end method

.method public fetchTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 2

    .line 41
    iget v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeMaxCount:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 46
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    iget-object v1, p4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    :goto_0
    iget v1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeMaxCount:I

    if-lt v0, v1, :cond_1

    .line 50
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getSelfOrPresetTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getAvailableTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1

    .line 44
    :cond_2
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getSelfOrPresetTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p1

    return-object p1
.end method

.method public resetDowngradeCount(J)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->clearTemplateInfoCache(J)V

    return-void
.end method

.method public setUpMaxDowngradeCount(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeMaxCount:I

    return-void
.end method

.method public startStrategy(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    iget-object v1, p4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    :goto_0
    invoke-static {}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->getInstance()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;->downgradeTemplate(Ljava/lang/String;JLcom/taobao/android/dinamicx/template/download/DXTemplateItem;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    iget-object p2, p4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    iget p3, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeMaxCount:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/taobao/android/dinamicx/template/DXTemplateDowngradeManager;->downgradeTimesMap:Ljava/util/Map;

    iget-object p3, p4, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
