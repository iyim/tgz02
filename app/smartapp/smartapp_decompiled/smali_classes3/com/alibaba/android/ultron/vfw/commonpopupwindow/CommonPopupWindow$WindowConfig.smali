.class public Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;
.super Ljava/lang/Object;
.source "CommonPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowConfig"
.end annotation


# static fields
.field public static final KEY_BOTTOM_RADIUS:Ljava/lang/String; = "popupWindowBottomRadius"

.field public static final KEY_TOP_RADIUS:Ljava/lang/String; = "popupWindowTopRadius"


# instance fields
.field private bgColor:I

.field private bottomCornersRadius:F

.field private closeDrawable:Landroid/graphics/drawable/Drawable;

.field private gravity:I

.field private topCornersRadius:F

.field private windowColor:I

.field private windowHeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->bgColor:I

    .line 284
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->windowColor:I

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->gravity:I

    return p0
.end method

.method static synthetic access$400(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->bgColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->windowHeight:F

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->closeDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)I
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->windowColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->topCornersRadius:F

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;)F
    .locals 0

    .line 278
    iget p0, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->bottomCornersRadius:F

    return p0
.end method


# virtual methods
.method public setCloseImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->closeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setGlobalBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 295
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->bgColor:I

    return-void
.end method

.method public setShowLocation(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->gravity:I

    return-void
.end method

.method public setWindowBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 300
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->windowColor:I

    return-void
.end method

.method public setWindowCornerRadius(FF)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->topCornersRadius:F

    .line 306
    iput p2, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->bottomCornersRadius:F

    return-void
.end method

.method public setWindowHeight(F)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/commonpopupwindow/CommonPopupWindow$WindowConfig;->windowHeight:F

    return-void
.end method
