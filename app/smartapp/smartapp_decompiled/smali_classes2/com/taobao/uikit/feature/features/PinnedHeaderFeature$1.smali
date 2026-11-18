.class Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;
.super Ljava/lang/Object;
.source "PinnedHeaderFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->setSectionAdapter(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 1

    .line 231
    iget-object p3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-static {p3}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;->getSection(I)I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;->bindSection(Landroid/view/View;I)V

    return-void
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-virtual {v1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-static {v1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;->firstSection()I

    move-result v1

    if-le v1, p1, :cond_2

    return v0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;->getSection(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;->this$0:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;->firstSection()I

    move-result v0

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v1
.end method
