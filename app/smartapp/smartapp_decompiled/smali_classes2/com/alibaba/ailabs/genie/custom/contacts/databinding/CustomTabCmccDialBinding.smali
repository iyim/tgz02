.class public Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
.super Landroid/databinding/ViewDataBinding;
.source "CustomTabCmccDialBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final btnDialBg:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnDialIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnRippleDial:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnVideoBg:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnVideoDial:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnVideoIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final deleteNumberButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialDetails:Landroid/support/constraint/ConstraintLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlate:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateEight:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateFive:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateFour:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateJing:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateNine:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateOne:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateSeven:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateSix:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateThree:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateTwo:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateXing:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final dialPlateZero:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final leaveTime:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final numberContent:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090164

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090168

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090167

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090169

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090161

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090160

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090166

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090162

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090165

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015f

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090163

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09016a

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090358

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090453

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09014e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900bc

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900be

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900bd

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009f

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900a0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 171
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mDirtyFlags:J

    .line 97
    sget-object v1, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x18

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x15

    .line 98
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnDialBg:Landroid/widget/ImageView;

    const/16 v1, 0x16

    .line 99
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    const/16 v1, 0x17

    .line 100
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnRippleDial:Landroid/widget/Button;

    const/16 v1, 0x12

    .line 101
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnVideoBg:Landroid/widget/ImageView;

    const/16 v1, 0x14

    .line 102
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnVideoDial:Landroid/widget/Button;

    const/16 v1, 0x13

    .line 103
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->btnVideoIcon:Landroid/widget/ImageView;

    const/16 v1, 0x11

    .line 104
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v1, 0xe

    .line 105
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialDetails:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x1

    .line 106
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlate:Landroid/widget/RelativeLayout;

    const/16 v1, 0xb

    .line 107
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateEight:Landroid/widget/LinearLayout;

    const/4 v1, 0x7

    .line 108
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateFive:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    .line 109
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateFour:Landroid/widget/LinearLayout;

    const/16 v1, 0x9

    .line 110
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateJing:Landroid/widget/TextView;

    const/16 v1, 0xc

    .line 111
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateNine:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    .line 112
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateOne:Landroid/widget/TextView;

    const/16 v1, 0xa

    .line 113
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateSeven:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 114
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateSix:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    .line 115
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateThree:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    .line 116
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateTwo:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    .line 117
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateXing:Landroid/widget/TextView;

    const/16 v1, 0xd

    .line 118
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->dialPlateZero:Landroid/widget/TextView;

    const/16 v1, 0xf

    .line 119
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->leaveTime:Landroid/widget/TextView;

    .line 120
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 122
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->numberContent:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->setRootTag(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 191
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/custom_tab_cmcc_dial_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 196
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tag isn\'t correct on view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 183
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b009e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 175
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b009e

    .line 179
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mDirtyFlags:J

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 140
    monitor-exit p0

    return v0

    .line 142
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 130
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 131
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
