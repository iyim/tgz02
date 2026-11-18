.class public Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;
.super Ljava/lang/Object;
.source "DXNotificationDownloadResult.java"


# instance fields
.field private failedTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private finishedTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->finishedTemplates:Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->failedTemplates:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public getFailedTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->failedTemplates:Ljava/util/List;

    return-object v0
.end method

.method public getFinishedTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->finishedTemplates:Ljava/util/List;

    return-object v0
.end method

.method public setFailedTemplates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->failedTemplates:Ljava/util/List;

    return-void
.end method

.method public setFinishedTemplates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationDownloadResult;->finishedTemplates:Ljava/util/List;

    return-void
.end method
