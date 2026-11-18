.class public interface abstract Lcom/alibaba/ailabs/systemui/INavStatusAble;
.super Ljava/lang/Object;
.source "INavStatusAble.java"


# static fields
.field public static final THEME_APP_NAV:I = 0x3

.field public static final THEME_NO_ESCAPE:I = 0x1

.field public static final THEME_NO_SYSTEM_ICONS:I = 0x2

.field public static final THEME_ONLY_BACK:I = 0x4

.field public static final THEME_ONLY_ESCAPE:I


# virtual methods
.method public abstract getCheckedItem()I
.end method

.method public abstract getContainer()Landroid/view/ViewGroup;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getNavTitle()Ljava/lang/String;
.end method

.method public abstract getStyle()I
.end method
