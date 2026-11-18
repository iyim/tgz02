.class public interface abstract Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar$OnNavBarEventListener;
.super Ljava/lang/Object;
.source "WidgetUINavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widgetui/WidgetUINavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNavBarEventListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onOperation(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIRightOperationType;Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUIButtonStyle;I)V
.end method

.method public abstract onTabReselected(Ljava/lang/String;I)V
.end method

.method public abstract onTabSelected(Ljava/lang/String;I)V
.end method

.method public abstract onTabUnselected(Ljava/lang/String;I)V
.end method
