.class Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl$1;
.super Ljava/util/ArrayList;
.source "DataLoaderEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;->doRequest(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "SUCCESS::\u8c03\u7528\u6210\u529f"

    .line 71
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderEngineImpl$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
