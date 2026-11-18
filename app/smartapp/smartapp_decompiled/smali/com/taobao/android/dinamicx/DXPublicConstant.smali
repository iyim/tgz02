.class public Lcom/taobao/android/dinamicx/DXPublicConstant;
.super Ljava/lang/Object;
.source "DXPublicConstant.java"


# static fields
.field public static TAG_ANIMATION_EXPANDED_WIDGET_ON_VIEW:I

.field public static TAG_EXPANDED_WIDGET_ON_VIEW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget v0, Lcom/taobao/android/dinamic/R$id;->dx_tag_expanded_widget_on_view:I

    sput v0, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_EXPANDED_WIDGET_ON_VIEW:I

    .line 12
    sget v0, Lcom/taobao/android/dinamic/R$id;->dx_tag_animation_expanded_widget_on_view:I

    sput v0, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_ANIMATION_EXPANDED_WIDGET_ON_VIEW:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
