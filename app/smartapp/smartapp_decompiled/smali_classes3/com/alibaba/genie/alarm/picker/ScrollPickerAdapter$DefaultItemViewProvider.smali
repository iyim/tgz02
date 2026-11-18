.class public Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$DefaultItemViewProvider;
.super Ljava/lang/Object;
.source "ScrollPickerAdapter.java"

# interfaces
.implements Lcom/alibaba/genie/alarm/picker/IViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultItemViewProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/genie/alarm/picker/IViewProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic onBindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$DefaultItemViewProvider;->onBindView(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 188
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/high16 p1, 0x41900000    # 18.0f

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public resLayout()I
    .locals 1

    .line 183
    sget v0, Lcom/alibaba/ailabs/basedomain/R$layout;->scroll_picker_default_item_layout:I

    return v0
.end method

.method public updateView(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    .line 197
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p2, :cond_1

    const-string p2, "#ED5275"

    goto :goto_1

    :cond_1
    const-string p2, "#000000"

    .line 198
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
