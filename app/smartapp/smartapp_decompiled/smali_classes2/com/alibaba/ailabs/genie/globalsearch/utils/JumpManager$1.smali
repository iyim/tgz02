.class Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;
.super Ljava/lang/Object;
.source "JumpManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nextReportIndex:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$nextReportIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTtsCallback(II)V
    .locals 2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;->val$nextReportIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 180
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1$1;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$1;)V

    .line 183
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const-string v0, "playBaikeTTS"

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->customHit(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
