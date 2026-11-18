.class public Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ScrollPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollPickerAdapterHolder"
.end annotation


# instance fields
.field private itemView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;->itemView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;-><init>(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;)Landroid/view/View;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterHolder;->itemView:Landroid/view/View;

    return-object p0
.end method
