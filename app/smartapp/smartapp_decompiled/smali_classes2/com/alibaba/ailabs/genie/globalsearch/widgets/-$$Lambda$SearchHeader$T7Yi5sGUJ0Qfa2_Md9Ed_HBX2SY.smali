.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;

.field private final synthetic f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$SearchHeader$T7Yi5sGUJ0Qfa2_Md9Ed_HBX2SY;->f$2:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->lambda$setTabList$17$SearchHeader(Lcom/alibaba/ailabs/genie/globalsearch/data/SearchRootBean$TabBean;Ljava/util/HashMap;Landroid/view/View;)V

    return-void
.end method
