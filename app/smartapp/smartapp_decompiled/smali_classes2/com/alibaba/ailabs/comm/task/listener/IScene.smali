.class public interface abstract Lcom/alibaba/ailabs/comm/task/listener/IScene;
.super Ljava/lang/Object;
.source "IScene.java"


# static fields
.field public static final FLAG_PACKAGE_CHANGE:I = 0x4

.field public static final FLAG_SCENE_CHANGE:I = 0x2

.field public static final FLAG_TASK_CHANGE:I = 0x1

.field public static final FLAG_TASK_SCENE_CHANGE:I = 0x3

.field public static final SCENE_NORMAL:Ljava/lang/String; = "normal"

.field public static final SCENE_SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field public static final SCENE_SCREEN_SAVER:Ljava/lang/String; = "screen_saver"

.field public static final TASK_APPLET:I = 0x2

.field public static final TASK_DESKTOP:I = 0x4

.field public static final TASK_MUSIC:I = 0x1

.field public static final TASK_NORMAL:I = 0x0

.field public static final TASK_VIDEO:I = 0x3


# virtual methods
.method public abstract onScene(Ljava/lang/String;IILjava/lang/String;)Z
.end method
