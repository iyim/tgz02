.class public Lcom/taobao/android/dinamicx/notification/DXNotificationResult;
.super Ljava/lang/Object;
.source "DXNotificationResult.java"


# instance fields
.field public failedTemplateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field public finishedTemplateItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field public templateUpdateRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/notification/DXTemplateUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->finishedTemplateItems:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->failedTemplateItems:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/taobao/android/dinamicx/notification/DXNotificationResult;->templateUpdateRequestList:Ljava/util/List;

    return-void
.end method
