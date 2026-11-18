.class Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;
.super Ljava/lang/Object;
.source "DXTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/DXTemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTemplatesTask"
.end annotation


# instance fields
.field downloadTaskTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/android/dinamicx/DXTemplateManager;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/DXTemplateManager;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;->this$0:Lcom/taobao/android/dinamicx/DXTemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXTemplateManager$DownloadTemplatesTask;->downloadTaskTemplates:Ljava/util/List;

    return-void
.end method
