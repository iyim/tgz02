.class public Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
.super Landroid/databinding/ViewDataBinding;
.source "TabDialBinding.java"


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
.field public final addNewContacts:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final btnBusiness:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

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

.field public final flHint:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final leaveTime:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final llTextLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/alibaba/ailabs/genie/contacts/view/CustomTabLinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final nickName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final numberContent:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final relationship:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final tvBottom:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final tvTop:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090164

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090168

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090167

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090169

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090161

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090160

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090166

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090162

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090165

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015f

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090163

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09016a

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09015d

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090358

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090453

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09014e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090435

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09050d

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09002b

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09009f

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900a0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900b1

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901ec

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0903ab

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0907f0

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0906f9

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090098

    const/16 v2, 0x1c

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

    .line 111
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 191
    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mDirtyFlags:J

    .line 112
    sget-object v1, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x1d

    invoke-static {p1, p2, v3, v1, v2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/16 v1, 0x14

    .line 113
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->addNewContacts:Landroid/widget/TextView;

    const/16 v1, 0x1c

    .line 114
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnBusiness:Landroid/widget/Button;

    const/16 v1, 0x15

    .line 115
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnDialBg:Landroid/widget/ImageView;

    const/16 v1, 0x16

    .line 116
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnDialIcon:Landroid/widget/ImageView;

    const/16 v1, 0x17

    .line 117
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->btnRippleDial:Landroid/widget/Button;

    const/16 v1, 0x11

    .line 118
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->deleteNumberButton:Landroid/widget/ImageView;

    const/16 v1, 0xe

    .line 119
    aget-object v1, p1, v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialDetails:Landroid/support/constraint/ConstraintLayout;

    const/4 v1, 0x1

    .line 120
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlate:Landroid/widget/RelativeLayout;

    const/16 v1, 0xb

    .line 121
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateEight:Landroid/widget/LinearLayout;

    const/4 v1, 0x7

    .line 122
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateFive:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    .line 123
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateFour:Landroid/widget/LinearLayout;

    const/16 v1, 0x9

    .line 124
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateJing:Landroid/widget/TextView;

    const/16 v1, 0xc

    .line 125
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateNine:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    .line 126
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateOne:Landroid/widget/TextView;

    const/16 v1, 0xa

    .line 127
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateSeven:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 128
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateSix:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    .line 129
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateThree:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    .line 130
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateTwo:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    .line 131
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateXing:Landroid/widget/TextView;

    const/16 v1, 0xd

    .line 132
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->dialPlateZero:Landroid/widget/TextView;

    const/16 v1, 0x18

    .line 133
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->flHint:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    .line 134
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->leaveTime:Landroid/widget/TextView;

    const/16 v1, 0x19

    .line 135
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->llTextLayout:Landroid/widget/LinearLayout;

    .line 136
    aget-object v0, p1, v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/view/CustomTabLinearLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mboundView0:Lcom/alibaba/ailabs/genie/contacts/view/CustomTabLinearLayout;

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mboundView0:Lcom/alibaba/ailabs/genie/contacts/view/CustomTabLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/view/CustomTabLinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x12

    .line 138
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->nickName:Landroid/widget/TextView;

    const/16 v0, 0x10

    .line 139
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->numberContent:Landroid/widget/TextView;

    const/16 v0, 0x13

    .line 140
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->relationship:Landroid/widget/TextView;

    const/16 v0, 0x1b

    .line 141
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvBottom:Landroid/widget/TextView;

    const/16 v0, 0x1a

    .line 142
    aget-object p1, p1, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->tvTop:Landroid/widget/TextView;

    .line 143
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->setRootTag(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 211
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
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

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "layout/tab_dial_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    .line 216
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 203
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
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

    const v0, 0x7f0b01ed

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
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

    .line 195
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;
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

    const v0, 0x7f0b01ed

    .line 199
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    return-object p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 184
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mDirtyFlags:J

    .line 185
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

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 160
    monitor-exit p0

    return v0

    .line 162
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

    .line 150
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 151
    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 152
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
