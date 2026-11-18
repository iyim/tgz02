.class public Lcom/alibaba/android/ultron/vfw/template/TemplateDownloadResult;
.super Ljava/lang/Object;
.source "TemplateDownloadResult.java"


# instance fields
.field public failedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public finishedTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public isFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
