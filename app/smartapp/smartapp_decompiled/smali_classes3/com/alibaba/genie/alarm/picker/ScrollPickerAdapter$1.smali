.class Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;
.super Ljava/lang/Object;
.source "ScrollPickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->updateView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$200(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$200(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;->onSelectedItemClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method
