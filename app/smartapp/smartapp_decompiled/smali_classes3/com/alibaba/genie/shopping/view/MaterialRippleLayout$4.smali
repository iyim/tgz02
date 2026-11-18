.class Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$4;
.super Landroid/util/Property;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$4;->this$0:Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Ljava/lang/Float;
    .locals 0

    .line 506
    invoke-static {p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->access$900(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 503
    check-cast p1, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$4;->get(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Ljava/lang/Float;)V
    .locals 0

    .line 511
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;->setRadius(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 503
    check-cast p1, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/shopping/view/MaterialRippleLayout$4;->set(Lcom/alibaba/genie/shopping/view/MaterialRippleLayout;Ljava/lang/Float;)V

    return-void
.end method
