.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;->f$1:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;->f$0:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/details/view/-$$Lambda$DetailsDialView$WMUIM7NarPDa21z6BA-2VaiXALw;->f$1:Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView;->lambda$setDialListener$29$DetailsDialView(Lcom/alibaba/ailabs/genie/contacts/details/view/DetailsDialView$IDialClickListener;Landroid/view/View;)V

    return-void
.end method
